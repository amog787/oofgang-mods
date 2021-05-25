.class Lcom/android/server/policy/OpPhoneWindowManager$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OpPhoneWindowManager;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/policy/OpPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OpPhoneWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/OpPhoneWindowManager$you;->zta:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/OpPhoneWindowManager$you;->zta:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/OpPhoneWindowManager;->access$200(Lcom/android/server/policy/OpPhoneWindowManager;)Lcom/android/server/policy/OpPhoneWindowManager$ywr;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->you()V

    return-void
.end method
