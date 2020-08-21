#ifndef CLIENTCONTROL_H
#define CLIENTCONTROL_H
#include "clientcommentctrl.h"
#include "clientmessagectrl.h"
#include "clientnetizenctrl.h"
#include "clientplayvideoctrl.h"
#include "clientpostvideoctrl.h"

class ClientControl
{
public:
    ClientControl();
private:
    ClientCommentCtrl clientcommentctrl;
    ClientMessageCtrl clientmessagectrl;
    ClientNetizenctrl clientnetizenctrl;
    ClientPlayVideoCtrl clientplayvideoctrl;
    ClientPostVideoCtrl clientpostvideoctrl;
};

#endif // CLIENTCONTROL_H
