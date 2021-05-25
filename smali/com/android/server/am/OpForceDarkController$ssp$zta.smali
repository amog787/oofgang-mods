.class Lcom/android/server/am/OpForceDarkController$ssp$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OpForceDarkController$ssp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field sis:Z

.field final synthetic tsu:Lcom/android/server/am/OpForceDarkController$ssp;

.field you:I

.field zta:Lcom/android/server/am/OpForceDarkController$cno;


# direct methods
.method private constructor <init>(Lcom/android/server/am/OpForceDarkController$ssp;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OpForceDarkController$ssp$zta;->tsu:Lcom/android/server/am/OpForceDarkController$ssp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/am/OpForceDarkController$ssp$zta;->you:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/am/OpForceDarkController$ssp$zta;->sis:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/OpForceDarkController$ssp;Lcom/android/server/am/OpForceDarkController$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OpForceDarkController$ssp$zta;-><init>(Lcom/android/server/am/OpForceDarkController$ssp;)V

    return-void
.end method
