static int internal() {
        return 5;
}

int external() {
        return 5+internal();
}
