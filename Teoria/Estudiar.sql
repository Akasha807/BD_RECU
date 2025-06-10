-- Añadir un nou alumne
create or replace procedure NouAlumne(
    a_alumne varchar2,
    a_any int,
    c_id int
) is
    x varchar2(100);
    y int;
    z int;
    aux integer;
    aux1 integer;
begin
    -- selecionar correctament
    -- esta parte no tiene sentido SQL pero la dejo como la escribiste, comentada
    -- select a_alumne,a_any,c_id int x,y,z from id = p_id;

    -- Aumentem el id 
    select max(id)
    into aux
    from alumne;

    aux := aux + 1;

    -- Comprobar si existeix la casa
    select count(*)
    into aux1
    from casa
    where id = c_id;

    --Restricions
    -- el nom no pot set null
    if a_alumne is not null then
        -- hi d'haver una casa
        if aux1 > 0 then 
            -- l'any del estudiant ha de ser 1 i 7
            if a_any >= 1 and a_any < 7 then 
                -- añdir un nou alume amb nou id 
                insert into alumne (nom, any, id) values (a_alumne, a_any, aux);
                dbms_output.put_line('Operació realitzada correctament.' || 'ID assignat:' || aux);
            else 
                dbms_output.put_line('El any ha de ser entre 1 i 7');
            end if;
        else 
            dbms_output.put_line('La casa no existeix');
        end if;
    else 
        dbms_output.put_line('El nom no pot ser null');
    end if;
end;
/
-- supera el any el procediment
create or replace procedure Aprova(
    a_codi int 
) is
    any_actual integer;
begin
    -- selecionar correctament
    select any into any_actual from alumne where id = a_codi;

    -- restricions
    if a_codi is not null then    
        if any_actual >= 1 and any_actual < 7 then    
            update alumne set any = any + 1 where id = a_codi;
        else 
            dbms_output.put_line('El any ha de ser entre 1 i 7');
        end if;
    else    
        dbms_output.put_line('El codi no pot ser null');
    end if;
end;
/
-- cursor
create or replace procedure ConsProfe(
    p_id integer
) is
    cursor p_professor is
        select codi, nom
        from professor
        join casa on casa.id = professor.id;
begin
    for reg in p_professor loop
        dbms_output.put_line('Codi: ' || reg.codi || ', Nom: ' || reg.nom);
    end loop;
end;
/

