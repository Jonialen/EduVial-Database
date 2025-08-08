
SET search_path TO public;

-- Tablas legacy que ya no usamos
DO $$
BEGIN
  IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema='public' AND table_name='quest') THEN
    EXECUTE 'DROP TABLE quest CASCADE';
  END IF;
  IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema='public' AND table_name='opt') THEN
    EXECUTE 'DROP TABLE opt CASCADE';
  END IF;
  IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema='public' AND table_name='ans') THEN
    EXECUTE 'DROP TABLE ans CASCADE';
  END IF;
  IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema='public' AND table_name='exam_result') THEN
    EXECUTE 'DROP TABLE exam_result CASCADE';
  END IF;
  IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema='public' AND table_name='exam_progress') THEN
    EXECUTE 'DROP TABLE exam_progress CASCADE';
  END IF;
END$$;


