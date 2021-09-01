.class Lcom/android/settings/ResetNetwork$2;
.super Ljava/lang/Object;
.source "ResetNetwork.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ResetNetwork;->establishInitialState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ResetNetwork;


# direct methods
.method constructor <init>(Lcom/android/settings/ResetNetwork;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/android/settings/ResetNetwork$2;->this$0:Lcom/android/settings/ResetNetwork;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/android/settings/ResetNetwork$2;->this$0:Lcom/android/settings/ResetNetwork;

    iget-object p0, p0, Lcom/android/settings/ResetNetwork;->mEsimCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->toggle()V

    return-void
.end method
