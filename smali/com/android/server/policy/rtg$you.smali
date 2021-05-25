.class Lcom/android/server/policy/rtg$you;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/rtg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/policy/rtg;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/rtg;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/rtg$you;->zta:Lcom/android/server/policy/rtg;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/rtg;Lcom/android/server/policy/rtg$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/rtg$you;-><init>(Lcom/android/server/policy/rtg;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xe

    if-eq p1, v0, :cond_1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/rtg$you;->zta:Lcom/android/server/policy/rtg;

    invoke-static {p0}, Lcom/android/server/policy/rtg;->zta(Lcom/android/server/policy/rtg;)Lcom/android/server/policy/PhoneWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerVeryLongPress()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/rtg$you;->zta:Lcom/android/server/policy/rtg;

    invoke-static {p0}, Lcom/android/server/policy/rtg;->zta(Lcom/android/server/policy/rtg;)Lcom/android/server/policy/PhoneWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerLongPress()V

    :goto_0
    return-void
.end method
