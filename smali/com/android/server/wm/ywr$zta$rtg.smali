.class public Lcom/android/server/wm/ywr$zta$rtg;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ywr$zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "rtg"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/wm/ywr$zta;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ywr$zta;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ywr$zta$rtg;->zta:Lcom/android/server/wm/ywr$zta;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ywr$zta$rtg;->zta:Lcom/android/server/wm/ywr$zta;

    invoke-virtual {p0}, Lcom/android/server/wm/ywr$zta;->zgw()V

    return-void
.end method
