.class Lcom/google/android/material/bottomappbar/BottomActionbar$5;
.super Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;
.source "BottomActionbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomappbar/BottomActionbar;->createFabDefaultXAnimation(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/bottomappbar/BottomActionbar;

.field final synthetic val$targetMode:I


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomappbar/BottomActionbar;I)V
    .locals 0

    .line 649
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$5;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar;

    iput p2, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$5;->val$targetMode:I

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onHidden(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 2

    .line 652
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$5;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar;

    iget v1, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$5;->val$targetMode:I

    invoke-static {v0, v1}, Lcom/google/android/material/bottomappbar/BottomActionbar;->access$1600(Lcom/google/android/material/bottomappbar/BottomActionbar;I)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationX(F)V

    .line 653
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomActionbar$5$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomActionbar$5$1;-><init>(Lcom/google/android/material/bottomappbar/BottomActionbar$5;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->show(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V

    return-void
.end method
