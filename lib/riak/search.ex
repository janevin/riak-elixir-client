defmodule Riak.Search do
	import Riak.Pool
  import :riakc_pb_socket

  #defpool query(pid, bucket, query, options \\ []) when is_pid(pid), do:
	 defpool query(pid, bucket, query, options) when is_pid(pid), do:
	search(pid, bucket, query, options)
  defpool query(pid, bucket, query, options, timeout) when is_pid(pid), do: search(pid, bucket, query, options, timeout)

 # defmodule Index do
    defpool list_index(pid) when is_pid(pid), do: list_search_indexes(pid)
    defpool put_index(pid, bucket) when is_pid(pid), do: create_search_index(pid, bucket)
    defpool put_index(pid, bucket, schema) when is_pid(pid), do: create_search_index(pid, bucket, schema, [])
    defpool put_index(pid, bucket, schema, props) when is_pid(pid), do: create_search_index(pid, bucket, schema, props)
    defpool get_index(pid, bucket) when is_pid(pid), do: get_search_index(pid, bucket)
    defpool delete_index(pid, bucket) when is_pid(pid), do: delete_search_index(pid, bucket)
  #end

  #defmodule Schema do
    defpool get_schema(pid, bucket) when is_pid(pid), do: get_search_schema(pid, bucket)

    defpool create_schema(pid, bucket, content) when is_pid(pid) do
      create_search_schema(pid, bucket, content)
   # end
  end
end
