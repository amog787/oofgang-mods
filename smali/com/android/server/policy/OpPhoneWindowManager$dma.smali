.class Lcom/android/server/policy/OpPhoneWindowManager$dma;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OpPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "dma"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/policy/OpPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/OpPhoneWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/OpPhoneWindowManager$dma;->zta:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/OpPhoneWindowManager;Lcom/android/server/policy/OpPhoneWindowManager$you;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/OpPhoneWindowManager$dma;-><init>(Lcom/android/server/policy/OpPhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget p0, p1, Landroid/os/Message;->what:I

    return-void
.end method
