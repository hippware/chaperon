defprotocol Chaperon.Actionable do
  alias Chaperon.Session
  alias Chaperon.Action.Error

  @type result :: Session.t | {:ok, Session.t} | {:error, Error.t}

  @spec run(Chaperon.Actionable.t, Session.t) :: result
  def run(action, session)

  @spec abort(Chaperon.Actionable.t, Session.t) :: result
  def abort(action, session)

  @spec retry(Chaperon.Actionable.t, Session.t) :: result
  def retry(action, session)

  @spec done?(Chaperon.Actionable.t, Session.t) :: boolean
  def done?(action, session)
end
