from zope.interface import implements
from zope.component.interfaces import IObjectEvent

class IModuleRatedEvent(IObjectEvent):
    """
    An event which fires whenever a module is rated.
    """
