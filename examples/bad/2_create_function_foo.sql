CREATE FUNCTION foo() RETURNS integer
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN bar();
END;
$$;