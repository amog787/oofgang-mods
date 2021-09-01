.class Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$1;
.super Ljava/lang/Object;
.source "OPFingerPrintInputViewCategory.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;

    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->mOnOPFingerComfirmListener:Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$OnOPFingerComfirmListener;

    if-eqz p0, :cond_0

    .line 92
    invoke-interface {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$OnOPFingerComfirmListener;->onOPFingerComfirmClick()V

    :cond_0
    return-void
.end method
