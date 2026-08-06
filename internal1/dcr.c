#include <stdio.h>
#include <sys/stat.h>
#include <unistd.h>

int main() {
    mkdir("MyDir", 0777);
    printf("Directory Created\n");
    rmdir("MyDir");
    printf("Directory Removed\n");
    return 0;

}
