program GuessTheNumberGame;

uses
  SysUtils;

procedure PlayGame;
var
  TargetNumber, UserGuess, Attempts: Integer;
  MaxAttempts: Integer;
begin
  Randomize; // ������������� ���������� ��������� �����
  TargetNumber := Random(100) + 1; // ��������� ���������� ����� �� 1 �� 100
  MaxAttempts := 7; // ������������� ����������� �� ���������� �������
  Attempts := 0;

  WriteLn('����� ���������� � ���� "������ �����"!');
  WriteLn('� ������� ����� �� 1 �� 100. � ��� ���� ', MaxAttempts, ' �������, ����� ������� ���.');

  repeat
    Inc(Attempts);
    Write('������� ', Attempts, ': ������� ���� �������������: ');
    ReadLn(UserGuess);

    if UserGuess < TargetNumber then
      WriteLn('������� ��������� �����!')
    else if UserGuess > TargetNumber then
      WriteLn('������� ������� �����!')
    else
    begin
      WriteLn('�����������! �� ������� ����� ', TargetNumber, ' �� ', Attempts, ' �������.');
      Exit;
    end;
  until Attempts = MaxAttempts;

  WriteLn('� ���������, �� ��������� ��� �������. ���������� ����� ����: ', TargetNumber);
end;

begin
  PlayGame;
  WriteLn('������� Enter, ����� �����...');
  ReadLn;
end.

