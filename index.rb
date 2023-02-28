def acchi_muite_hoi_winner
    puts "あっち向いて〜"
  puts "[0]:上\n[1]:右\n[2]:下\n[3]:左"

  player_direction = gets.to_i
  program_direction = rand(4)

  if player_direction > 3
    puts "入力された値が無効です"
    return true
  end

  directions = ["上", "右", "下", "左"]

  puts "あなたの指示:#{directions[player_direction]}, プログラムの指示:#{directions[program_direction]}"

  if player_direction == program_direction
    puts "あなたの勝ちです"
    return false
  else
    puts "残念！もう一度じゃんけんを始めます"
    return true
  end
end

def acchi_muite_hoi_loser
  puts "あっち向いて〜"
  puts "[0]:上\n[1]:右\n[2]:下\n[3]:左"

  player_direction = gets.to_i
  program_direction = rand(4)

  if player_direction > 3
    puts "入力された値が無効です"
    return true
  end

  directions = ["上", "右", "下", "左"]

  puts "あなたの指示:#{directions[player_direction]}, プログラムの指示:#{directions[program_direction]}"

  if player_direction == program_direction
    puts "あなたの負けです"
    return false
  else
    puts "踏ん張った！もう一度じゃんけんを始めます"
    return true
  end
end


def janken_acchi_muite_hoi
  
  next_game = true

  while next_game
    puts "最初はグー、じゃんけん..."
    puts "[0]:グー\n[1]:チョキ\n[2]:パー"

    player_hand = gets.to_i
    program_hand = rand(3)

    if player_hand > 2
      puts "入力された値が無効です"
      next_game = true
    else
      jankens = ["グー", "チョキ", "パー"]
      puts "あなたの手:#{jankens[player_hand]}, プログラムの手:#{jankens[program_hand]}"

      if player_hand == program_hand
        puts "あいこ"
      elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
        puts "あなたの勝ち！"
        next_game = acchi_muite_hoi_winner
      else
        puts "負け"
        next_game = acchi_muite_hoi_loser
      end
    end
  end
end

# ゲームの開始
janken_acchi_muite_hoi

