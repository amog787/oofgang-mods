.class Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$2;
.super Ljava/lang/Object;
.source "OPAppDragAndDropAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->onBindViewHolder(Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$CustomViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dragCell:Lcom/oneplus/settings/quicklaunch/OPAppDragCell;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;Lcom/oneplus/settings/quicklaunch/OPAppDragCell;)V
    .locals 0

    .line 179
    iput-object p2, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$2;->val$dragCell:Lcom/oneplus/settings/quicklaunch/OPAppDragCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$2;->val$dragCell:Lcom/oneplus/settings/quicklaunch/OPAppDragCell;

    .line 183
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/settings/better/OPAppModel;

    .line 184
    invoke-virtual {p0, p2}, Lcom/oneplus/settings/better/OPAppModel;->setSelected(Z)V

    return-void
.end method
