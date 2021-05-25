.class Lcom/android/server/am/irq;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/irq$you;
    }
.end annotation


# static fields
.field private static final zta:Ljava/lang/String; = "OpBroadcastDefaultStrategy"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/irq$zta;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/irq;-><init>()V

    return-void
.end method

.method public static sis()Lcom/android/server/am/irq;
    .locals 1

    invoke-static {}, Lcom/android/server/am/irq$you;->zta()Lcom/android/server/am/irq;

    move-result-object v0

    return-object v0
.end method

.method public static you()V
    .locals 0

    invoke-static {}, Lcom/android/server/am/oxb;->tsu()V

    return-void
.end method

.method public static zta()V
    .locals 0

    invoke-static {}, Lcom/android/server/am/oxb;->lqr()V

    return-void
.end method


# virtual methods
.method public tsu()V
    .locals 0

    invoke-static {}, Lcom/android/server/am/irq;->zta()V

    return-void
.end method
