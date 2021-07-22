.class Lcom/oneplus/settings/OPColorPickerActivity$1;
.super Ljava/lang/Object;
.source "OPColorPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPColorPickerActivity;->initAccentColorView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPColorPickerActivity;

.field final synthetic val$mPalette:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPColorPickerActivity;[Ljava/lang/String;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity$1;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    iput-object p2, p0, Lcom/oneplus/settings/OPColorPickerActivity$1;->val$mPalette:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 275
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 276
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$1;->val$mPalette:[Ljava/lang/String;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity$1;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v1}, Lcom/oneplus/settings/OPColorPickerActivity;->access$000(Lcom/oneplus/settings/OPColorPickerActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$1;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPColorPickerActivity;->setSelectionVisible(Z)V

    .line 279
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$1;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v0, p1}, Lcom/oneplus/settings/OPColorPickerActivity;->access$102(Lcom/oneplus/settings/OPColorPickerActivity;I)I

    .line 280
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$1;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v0, v1}, Lcom/oneplus/settings/OPColorPickerActivity;->access$202(Lcom/oneplus/settings/OPColorPickerActivity;Z)Z

    .line 281
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$1;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPColorPickerActivity;->setSelectionVisible(Z)V

    .line 282
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$1;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity$1;->val$mPalette:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-static {v0, p1}, Lcom/oneplus/settings/OPColorPickerActivity;->access$002(Lcom/oneplus/settings/OPColorPickerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 283
    iget-object p0, p0, Lcom/oneplus/settings/OPColorPickerActivity$1;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->access$000(Lcom/oneplus/settings/OPColorPickerActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oneplus/settings/OPColorPickerActivity;->access$300(Lcom/oneplus/settings/OPColorPickerActivity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
