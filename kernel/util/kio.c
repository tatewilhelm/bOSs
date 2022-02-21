void kernel_putchar(char c)
{
    asm(
        "mov %%ah, 0x0e"
        "mov %%al, %0"
        "int 0x10"
        : // No outputs
        : "r" (c)
        : "ah", "al"
        );
}