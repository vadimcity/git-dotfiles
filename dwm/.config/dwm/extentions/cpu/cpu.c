#include <stdio.h>
#include <stdlib.h>

double getCPUUsage() {
    FILE* file = fopen("/proc/stat", "r");
    if (!file) {
        perror("Failed to open /proc/stat");
        exit(1);
    }
    
    char line[256];
    fgets(line, sizeof(line), file);

    unsigned long long user, nice, system, idle;
    sscanf(line, "cpu %llu %llu %llu %llu", &user, &nice, &system, &idle);

    fclose(file);

    double total = user + nice + system + idle;
    double usage = (double)(total - idle) / total * 100.0;

    return usage;
}
