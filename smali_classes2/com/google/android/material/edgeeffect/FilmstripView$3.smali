.class Lcom/google/android/material/edgeeffect/FilmstripView$3;
.super Landroid/os/Handler;
.source "FilmstripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/edgeeffect/FilmstripView;->setupHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/edgeeffect/FilmstripView;


# direct methods
.method constructor <init>(Lcom/google/android/material/edgeeffect/FilmstripView;)V
    .locals 0

    .line 1878
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView$3;->this$0:Lcom/google/android/material/edgeeffect/FilmstripView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 1882
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView$3;->this$0:Lcom/google/android/material/edgeeffect/FilmstripView;

    invoke-static {p0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView;->access$1000(Lcom/google/android/material/edgeeffect/FilmstripView;Landroid/os/Message;)V

    return-void
.end method
