puts "じゃんけん・・・"

def janken
  puts "0(グー),1(チョキ),2(パー),3(戦わない)"

  player_hand = gets.to_i
  program_hand = rand(3)
  
  if(player_hand == 3)
    puts "あなたは逃げました"
    return false
  elsif(player_hand == 0 || player_hand == 1 || player_hand == 2)
  puts "ホイ!"
  puts "______________________"

  jankens = ["グー", "チョキ","パー"]
  this_way = ["上","下","左","右"]
  puts "あなたは:#{jankens[player_hand]}を出しました"
  puts "相手は:#{jankens[program_hand]}を出しました"
  
    if player_hand == program_hand
      puts "あいこで"
      return true
    elsif(player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
      puts "あっちむいて〜"
      puts "0(上),1(下),2(左),3(右)"
      player_hands = gets.to_i
      program_hands = rand(4)
      puts "ホイ!"
      puts "_____________________"
      puts "あなた：#{this_way[player_hand]}"
      puts "相手は：#{this_way[program_hands]}"
      if player_hands == program_hands
        puts "あなたの勝ちです"
        return false
      else
        return true
      end  
        
        
  
    elsif(player_hand == 1 && program_hand == 0)||(player_hand == 2 && program_hand == 1)||(player_hand == 0 && program_hand == 2)
      puts "あっちむいて〜"
      puts "0(上),1(下),2(左),3(右)"
      player_hands = gets.to_i
      program_hands = rand(4)
      puts "ホイ!"
      puts "_____________________"
      puts "あなた：#{this_way[player_hand]}"
      puts "相手は：#{this_way[program_hands]}"
      if player_hands == program_hands
        puts "あなたの負けです"
        return false
      else
        return true
      end  
    
    else
      puts "0~3のどれかを入力してください"
      return true
    end
  end  
end




while janken == true
  janken
end