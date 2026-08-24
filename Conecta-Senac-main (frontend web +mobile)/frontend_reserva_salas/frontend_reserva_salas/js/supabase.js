import { createClient } from 'https://cdn.jsdelivr.net/npm/@supabase/supabase-js/+esm'

const supabaseUrl = 'https://xkdduqmnlubjzqknllbr.supabase.co'
const supabaseKey = 'sb_publishable_DKVEIi6g-01kjRZ-e3hMvQ_io599-h2'

export const supabase = createClient(supabaseUrl, supabaseKey)