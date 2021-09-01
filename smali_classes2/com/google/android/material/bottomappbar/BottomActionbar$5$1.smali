.class Lcom/google/android/material/bottomappbar/BottomActionbar$5$1;
.super Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;
.source "BottomActionbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomappbar/BottomActionbar$5;->onHidden(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/material/bottomappbar/BottomActionbar$5;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomappbar/BottomActionbar$5;)V
    .locals 0

    .line 654
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$5$1;->this$1:Lcom/google/android/material/bottomappbar/BottomActionbar$5;

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onShown(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 0

    .line 657
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$5$1;->this$1:Lcom/google/android/material/bottomappbar/BottomActionbar$5;

    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$5;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar;

    invoke-static {p0}, Lcom/google/android/material/bottomappbar/BottomActionbar;->access$1500(Lcom/google/android/material/bottomappbar/BottomActionbar;)V

    return-void
.end method
