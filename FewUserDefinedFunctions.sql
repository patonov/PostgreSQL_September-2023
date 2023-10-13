create function fn_full_name(f_name varchar, l_name varchar)
returns varchar(70)
as
$$
begin
	if f_name is null or f_name = '' then
	return initcap(l_name);
	end if;
	if l_name is null or l_name = '' then
	return initcap(f_name);
	end if;
	return initcap(concat_ws(' ', f_name, l_name));
end
$$
language plpgsql;


create or replace function fn_calculate_future_value(
	in initial_sum int, 
	in yearly_interest_rate decimal, 
	in number_of_years int,
	out f_value decimal
)
as 
$$
begin
f_value := trunc(initial_sum * power((1 + yearly_interest_rate), number_of_years), 4);
end
$$
language plpgsql;

SELECT fn_calculate_future_value(1000, 0.1, 5);

create or replace function fn_is_word_comprised(
		in set_of_letters varchar(50),
		in word varchar(50),
		out final_result boolean
)
as 
$$
declare
	word_length int;
	idx int := 1;
	letter char(1);
	counter int := 0;	
begin
	word_length := (select length(word));
	
	while idx <= word_length loop
		letter := (select substring(word from idx for 1));
            if (select position(lower(letter) in lower(set_of_letters)) > 0) then
                counter := counter + 1;
            end if;
            idx = idx + 1;
	end loop;
	
	if counter = word_length then
        final_result := true;
    else
        final_result := false;
    end if;
end
$$
language plpgsql;

create OR replace function fn_is_game_over(is_game_over boolean)
    returns table
            (
                "name" VARCHAR(50),
                game_type_id INT,
                is_finished BOOLEAN
            )
as
$$
begin
    return query
        select 
				g.name as name,
               	g.game_type_id as game_type_id,
              	g.is_finished  as is_finished
        from games as g where g.is_finished = is_game_over;

end;
$$
language plpgsql;



























