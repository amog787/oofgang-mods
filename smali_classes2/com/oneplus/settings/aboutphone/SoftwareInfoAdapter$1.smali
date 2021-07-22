.class Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$1;
.super Ljava/lang/Object;
.source "SoftwareInfoAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;->onBindViewHolder(Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;

.field final synthetic val$holder:Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;I)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$1;->this$0:Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;

    iput-object p2, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$1;->val$holder:Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;

    iput p3, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 51
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$1;->this$0:Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;

    invoke-static {p1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;->access$000(Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;)Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$OnItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$1;->val$holder:Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget p0, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$1;->val$position:I

    invoke-interface {p1, v0, p0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    return-void
.end method
