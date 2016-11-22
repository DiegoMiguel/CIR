namespace CirWebView.Model
{
    public class Usuario
    {
        public int Id { get; set; }
        public string Email { get; set; }
        public string Senha { get; set; }
        public object Nome { get; internal set; }
    }
}