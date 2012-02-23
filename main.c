
typedef void (*plugin_callback_func) (void *gcc_data, void *user_data);
void register_callback (const char *plugin_name,
			int event,
			plugin_callback_func callback,
			void *user_data)
{

}

int main ()
{

}
