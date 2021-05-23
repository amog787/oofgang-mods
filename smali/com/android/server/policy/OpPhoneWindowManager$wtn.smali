.class Lcom/android/server/policy/OpPhoneWindowManager$wtn;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OpPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "wtn"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/policy/OpPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/OpPhoneWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/OpPhoneWindowManager$wtn;->zta:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/OpPhoneWindowManager;Lcom/android/server/policy/OpPhoneWindowManager$you;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/OpPhoneWindowManager$wtn;-><init>(Lcom/android/server/policy/OpPhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "KeyLockMode"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->values()[Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    move-result-object p2

    aget-object p1, p2, p1

    sput-object p1, Lcom/android/server/policy/OpPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    sget-boolean p1, Lcom/android/server/policy/OpPhoneWindowManager;->sDebugKeylock:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "KeyLockModeReceiver: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/android/server/policy/OpPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OpPhoneWindowManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object p1, Lcom/android/server/policy/OpPhoneWindowManager$zta;->zta:[I

    sget-object p2, Lcom/android/server/policy/OpPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    const/4 p2, 0x6

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/OpPhoneWindowManager$wtn;->zta:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/OpPhoneWindowManager;->access$200(Lcom/android/server/policy/OpPhoneWindowManager;)Lcom/android/server/policy/OpPhoneWindowManager$ywr;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you()V

    :goto_0
    return-void
.end method
