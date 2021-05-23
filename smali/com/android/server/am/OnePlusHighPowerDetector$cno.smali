.class public Lcom/android/server/am/OnePlusHighPowerDetector$cno;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusHighPowerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "cno"
.end annotation


# instance fields
.field public sis:Ljava/lang/String;

.field public final tsu:I

.field public final you:I

.field public final zta:I


# direct methods
.method constructor <init>(IILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$cno;->zta:I

    iput p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector$cno;->you:I

    iput-object p3, p0, Lcom/android/server/am/OnePlusHighPowerDetector$cno;->sis:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/am/OnePlusHighPowerDetector$cno;->tsu:I

    return-void
.end method
