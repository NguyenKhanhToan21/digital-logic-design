library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lab3_tb is
end lab3_tb;

architecture behavior of lab3_tb is

    -- Component under test
    component Lab3
        port(
            S1, S0 : in  std_logic;
            CLK    : in  std_logic;
            InputA : in  std_logic_vector(3 downto 0);
            InputB : in  std_logic_vector(3 downto 0);
            OE     : out std_logic_vector(7 downto 0)
        );
    end component;

    -- Signals
    signal CLK     : std_logic := '0';
    signal S0, S1  : std_logic := '0';
    signal InputA  : std_logic_vector(3 downto 0) := (others => '0');
    signal InputB  : std_logic_vector(3 downto 0) := (others => '0');
    signal OE      : std_logic_vector(7 downto 0);

    constant CLK_PERIOD : time := 10 ns;

begin

    -- Instantiate DUT
    uut: Lab3
        port map (
            S1 => S1,
            S0 => S0,
            CLK => CLK,
            InputA => InputA,
            InputB => InputB,
            OE => OE
        );

    --------------------------------------------------------------------
    -- Clock generation
    --------------------------------------------------------------------
    clk_process : process
    begin
        CLK <= '0';
        wait for CLK_PERIOD / 2;
        CLK <= '1';
        wait for CLK_PERIOD / 2;
    end process clk_process;

    --------------------------------------------------------------------
    -- Stimulus
    --------------------------------------------------------------------
    stim_proc : process
        -- Procedure để kiểm tra một trường hợp nhân
        procedure test_multiply(a, b : in integer) is
            variable expected_result : integer;
        begin
            -- Tính toán kết quả kỳ vọng
            expected_result := a * b;

            -- Nạp giá trị đầu vào
            InputA <= std_logic_vector(to_unsigned(a, 4));
            InputB <= std_logic_vector(to_unsigned(b, 4));

            -- Bắt đầu chu trình
            report "----------------------------------------------------";
            report "Test Case: A=" & integer'image(a) & ", B=" & integer'image(b);

            -- Step 1: Chuyển sang trạng thái LOAD (S1=1, S0=0) trong 1 chu kỳ clock
            S1 <= '1'; S0 <= '0';
            wait for CLK_PERIOD;

            -- Step 2: Chuyển sang trạng thái EXECUTE (S1=0, S0=1) và chạy 4 chu kỳ dịch/cộng
            S1 <= '0'; S0 <= '1';
            for i in 0 to 3 loop
                wait for CLK_PERIOD;
            end loop;

            -- Step 3: Chuyển về trạng thái HOLD/IDLE (S1=0, S0=0) để đọc kết quả
            S1 <= '0'; S0 <= '0';
            wait for CLK_PERIOD;

            -- Kiểm tra kết quả
            assert (to_integer(unsigned(OE)) = expected_result)
                report "FAILED! A=" & integer'image(a) &
                       " B=" & integer'image(b) &
                       " -> Expected=" & integer'image(expected_result) &
                       " Got=" & integer'image(to_integer(unsigned(OE)))
                severity error;

            report "PASSED! Result=" & integer'image(to_integer(unsigned(OE)));
            
            -- Đợi một khoảng thời gian ngắn trước khi bắt đầu test case tiếp theo
            wait for CLK_PERIOD * 2;
        end procedure;
    begin
        -- Bắt đầu mô phỏng, giữ trạng thái IDLE ban đầu
        S1 <= '0'; S0 <= '0';
        wait for 20 ns;

        -- Chạy các trường hợp kiểm thử
        test_multiply(3, 2);    -- Expected: 6
        test_multiply(7, 5);    -- Expected: 35
        test_multiply(9, 3);    -- Expected: 27
        test_multiply(15, 15);  -- Expected: 225

        wait for 100 ns;
        report "Simulation finished" severity note;
        wait;
    end process stim_proc;

end behavior;