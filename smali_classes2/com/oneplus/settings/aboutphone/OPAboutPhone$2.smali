.class Lcom/oneplus/settings/aboutphone/OPAboutPhone$2;
.super Ljava/lang/Object;
.source "OPAboutPhone.java"

# interfaces
.implements Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/aboutphone/OPAboutPhone;->displaySoftWarePreference(Ljava/util/List;)V
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

    .line 127
    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone$2;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone$2;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhone;

    invoke-static {v0, p1}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->access$302(Lcom/oneplus/settings/aboutphone/OPAboutPhone;Landroid/view/View;)Landroid/view/View;

    .line 131
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone$2;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhone;

    invoke-static {p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->access$400(Lcom/oneplus/settings/aboutphone/OPAboutPhone;)Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->onItemClick(I)V

    return-void
.end method
