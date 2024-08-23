program GuessTheNumberGame;

uses
  SysUtils;

procedure PlayGame;
var
  TargetNumber, UserGuess, Attempts: Integer;
  MaxAttempts: Integer;
begin
  Randomize; // Инициализация генератора случайных чисел
  TargetNumber := Random(100) + 1; // Генерация случайного числа от 1 до 100
  MaxAttempts := 7; // Устанавливаем ограничение на количество попыток
  Attempts := 0;

  WriteLn('Добро пожаловать в игру "Угадай число"!');
  WriteLn('Я загадал число от 1 до 100. У вас есть ', MaxAttempts, ' попыток, чтобы угадать его.');

  repeat
    Inc(Attempts);
    Write('Попытка ', Attempts, ': Введите ваше предположение: ');
    ReadLn(UserGuess);

    if UserGuess < TargetNumber then
      WriteLn('Слишком маленькое число!')
    else if UserGuess > TargetNumber then
      WriteLn('Слишком большое число!')
    else
    begin
      WriteLn('Поздравляем! Вы угадали число ', TargetNumber, ' за ', Attempts, ' попыток.');
      Exit;
    end;
  until Attempts = MaxAttempts;

  WriteLn('К сожалению, вы исчерпали все попытки. Загаданное число было: ', TargetNumber);
end;

begin
  PlayGame;
  WriteLn('Нажмите Enter, чтобы выйти...');
  ReadLn;
end.

