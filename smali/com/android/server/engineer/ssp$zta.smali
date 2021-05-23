.class Lcom/android/server/engineer/ssp$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/engineer/ssp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zta"
.end annotation


# instance fields
.field public sis:Ljava/lang/String;

.field public you:Ljava/lang/String;

.field public zta:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/engineer/ssp$zta;->zta:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/engineer/ssp$zta;->zta:I

    iput-object p2, p0, Lcom/android/server/engineer/ssp$zta;->you:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/engineer/ssp$zta;->sis:Ljava/lang/String;

    return-void
.end method
