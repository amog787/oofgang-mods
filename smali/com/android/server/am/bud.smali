.class Lcom/android/server/am/bud;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/bud$you;
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

.method synthetic constructor <init>(Lcom/android/server/am/bud$zta;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/bud;-><init>()V

    return-void
.end method

.method public static sis()Lcom/android/server/am/bud;
    .locals 1

    invoke-static {}, Lcom/android/server/am/bud$you;->zta()Lcom/android/server/am/bud;

    move-result-object v0

    return-object v0
.end method

.method public static you()V
    .locals 0

    invoke-static {}, Lcom/android/server/am/zgw;->tsu()V

    return-void
.end method

.method public static zta()V
    .locals 0

    invoke-static {}, Lcom/android/server/am/zgw;->lqr()V

    return-void
.end method


# virtual methods
.method public tsu()V
    .locals 0

    invoke-static {}, Lcom/android/server/am/bud;->zta()V

    return-void
.end method
