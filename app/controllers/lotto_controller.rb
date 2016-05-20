class LottoController < ApplicationController
    def lottery
        #로또 번호 1부터 45까지
        @lotto_num = [*1..45 ]
        
        #번호를 고르는 구문
        @pick_num = [ 0, 1, 2, 3, 4, 5 ]
        @pick_num[0] = @lotto_num.sample
        for i in 1..5
            @pick_num[i] = @lotto_num.sample
            @tmp = i
            for e in 0..(@tmp-1)
                while @pick_num[@tmp] == @pick_num[e]
                    @pick_num[@tmp] = @lotto_num.sample
                end
            end
        end
        
        #번호를 오름차순 정렬로 나열하는 구문
        for i in 1..5
            @tmp = i
            for e in 0..(@tmp-1)
                if @pick_num[@tmp] < @pick_num[e]
                    @tmp_num = @pick_num[e]
                    @pick_num[e] = @pick_num[@tmp]
                    @pick_num[@tmp] = @tmp_num
                end
            end
        end
        
        #이미지로 뽑아내는 부분
        @image_file_number_to_string = [ "1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg", "10.jpg", "11.jpg", "12.jpg", "13.jpg", "14.jpg", "15.jpg", "16.jpg", "17.jpg", "18.jpg", "19.jpg", "20.jpg", "21.jpg", "22.jpg", "23.jpg", "24.jpg", "25.jpg", "26.jpg", "27.jpg", "28.jpg", "29.jpg", "30.jpg", "31.jpg", "32.jpg", "33.jpg", "34.jpg", "35.jpg", "36.jpg", "37.jpg", "38.jpg", "39.jpg", "40.jpg", "41.jpg", "42.jpg", "43.jpg", "44.jpg", "45.jpg" ]
        for i in 0..5
            @tmp = i
            for e in 1..45
                if e == @pick_num[@tmp]
                    if @tmp == 0
                        @img1=@image_file_number_to_string[e-1]
                    end
                    if @tmp == 1
                        @img2=@image_file_number_to_string[e-1]
                    end
                    if @tmp == 2
                        @img3=@image_file_number_to_string[e-1]
                    end
                    if @tmp == 3
                        @img4=@image_file_number_to_string[e-1]
                    end
                    if @tmp == 4
                        @img5=@image_file_number_to_string[e-1]
                    end
                    if @tmp == 5
                        @img6=@image_file_number_to_string[e-1]
                    end
                end
            end
        end
        
    end
end
