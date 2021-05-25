.class Lcom/android/server/am/StartAppSpecialUidsPolicy$zta;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/StartAppSpecialUidsPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/StartAppSpecialUidsPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/am/StartAppSpecialUidsPolicy;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy$zta;->zta:Lcom/android/server/am/StartAppSpecialUidsPolicy;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy$zta;->zta:Lcom/android/server/am/StartAppSpecialUidsPolicy;

    invoke-static {p0}, Lcom/android/server/am/StartAppSpecialUidsPolicy;->zta(Lcom/android/server/am/StartAppSpecialUidsPolicy;)V

    return-void
.end method
