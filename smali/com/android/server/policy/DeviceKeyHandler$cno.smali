.class Lcom/android/server/policy/DeviceKeyHandler$cno;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/DeviceKeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "cno"
.end annotation


# static fields
.field static final sis:I = 0x2

.field static final you:I = 0x1


# instance fields
.field final synthetic zta:Lcom/android/server/policy/DeviceKeyHandler;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/DeviceKeyHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler$cno;->zta:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/DeviceKeyHandler;Lcom/android/server/policy/DeviceKeyHandler$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/DeviceKeyHandler$cno;-><init>(Lcom/android/server/policy/DeviceKeyHandler;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/DeviceKeyHandler$cno;->zta:Lcom/android/server/policy/DeviceKeyHandler;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/policy/DeviceKeyHandler;->sis(Lcom/android/server/policy/DeviceKeyHandler;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/DeviceKeyHandler$cno;->zta:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-static {p0}, Lcom/android/server/policy/DeviceKeyHandler;->you(Lcom/android/server/policy/DeviceKeyHandler;)V

    :goto_0
    return-void
.end method
