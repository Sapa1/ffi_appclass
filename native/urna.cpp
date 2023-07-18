//? include da interface
#include "urna.hpp" 
using namespace std;
int main(int argc, char const *argv[])
{
    playAudio("C:\\flutterdev\\ffi_appclass\\assets\\sounds\\click.wav");
    return 0;
}

void playAudio(const char* path)//? Criação de ponteiro para que possa ser passado pelo dart
{
    PlaySoundA(path, NULL, SND_FILENAME | SND_ASYNC);
}