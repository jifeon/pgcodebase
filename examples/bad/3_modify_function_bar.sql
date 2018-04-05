DROP FUNCTION foo();
DROP FUNCTION bar();

CREATE FUNCTION bar() RETURNS integer
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN 2;
END;
$$;
CREATE FUNCTION foo() RETURNS integer
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN bar();
END;
$$;