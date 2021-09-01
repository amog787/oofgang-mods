.class Lcom/oneplus/settings/aboutphone/OPAboutPhone$1;
.super Landroid/os/Handler;
.source "OPAboutPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/aboutphone/OPAboutPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhone;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/aboutphone/OPAboutPhone;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhone;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 59
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 60
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const-string v0, "OPAboutPhone"

    const-string v2, "update unlock icon"

    .line 61
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhone;

    invoke-static {v2}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->access$000(Lcom/oneplus/settings/aboutphone/OPAboutPhone;)Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhone;

    invoke-static {v2}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->access$100(Lcom/oneplus/settings/aboutphone/OPAboutPhone;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 64
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 65
    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhone;

    invoke-static {v2}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->access$000(Lcom/oneplus/settings/aboutphone/OPAboutPhone;)Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-gtz v2, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhone;

    invoke-static {v1}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->access$100(Lcom/oneplus/settings/aboutphone/OPAboutPhone;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;

    if-eqz v1, :cond_2

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update unlock icon and item title = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhone;

    invoke-static {v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->access$200(Lcom/oneplus/settings/aboutphone/OPAboutPhone;)Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->op_network_unlock:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 74
    iget-object p1, v1, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhone;

    invoke-static {p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->access$200(Lcom/oneplus/settings/aboutphone/OPAboutPhone;)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$drawable;->ic_network_locked:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iget-object p0, v1, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;->tvSummary:Landroid/widget/TextView;

    sget p1, Lcom/android/settings/R$string;->op_unlock_status_locked:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 77
    :cond_1
    iget-object p1, v1, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhone;

    invoke-static {p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->access$200(Lcom/oneplus/settings/aboutphone/OPAboutPhone;)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$drawable;->ic_network_unlock:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    iget-object p0, v1, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;->tvSummary:Landroid/widget/TextView;

    sget p1, Lcom/android/settings/R$string;->op_unlock_status_unlock:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 83
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
