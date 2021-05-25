.class Lcom/android/server/am/AppRecordManagerService$rtg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/OnePlusUtil$zta$you;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppRecordManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "rtg"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/AppRecordManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppRecordManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/AppRecordManagerService$rtg;->zta:Lcom/android/server/am/AppRecordManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 0

    const-string p0, "frontPackageChanged"

    invoke-static {p0}, Lcom/android/server/am/qbh;->sis(Ljava/lang/String;)V

    invoke-static/range {p1 .. p6}, Lcom/android/server/am/OpAppRecordInjector;->noteFrontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V

    return-void
.end method
