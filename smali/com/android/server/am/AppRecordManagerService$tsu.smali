.class Lcom/android/server/am/AppRecordManagerService$tsu;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppRecordManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "tsu"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/AppRecordManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppRecordManagerService;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/AppRecordManagerService$tsu;->zta:Lcom/android/server/am/AppRecordManagerService;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService$tsu;->zta:Lcom/android/server/am/AppRecordManagerService;

    invoke-static {p0}, Lcom/android/server/am/AppRecordManagerService;->access$1000(Lcom/android/server/am/AppRecordManagerService;)V

    return-void
.end method
