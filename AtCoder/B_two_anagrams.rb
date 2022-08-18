#英小文字のみからなる文字列 s, t が与えられます。 
#あなたは、s の文字を好きな順に並べ替え、文字列 s ′を作ります。 
#また、t の文字を好きな順に並べ替え、文字列 t ′を作ります。 
#このとき、辞書順で s ′<t ′となるようにできるか判定してください。
def two_anagrams(s, t)
  s_dash = s.split('').sort.join('')
  t_dash = t.split('').sort.reverse.join('')
  st_array = [s_dash, t_dash].sort
  if st_array[0] == s_dash
    puts 'Yes'
  else
    puts 'No'
  end
end

s = gets.chomp
t = gets.chomp
two_anagrams(s, t)

#学び
#sortは配列にしか使えない。.sort.reverseで降順。
#splitメソッドは文字列を配列に、joinメソッドは配列を文字列に。
