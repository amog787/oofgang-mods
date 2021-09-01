.class Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "UserCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UserCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CredentialAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/UserCredentialsSettings$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final LAYOUT_RESOURCE:I


# instance fields
.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/UserCredentialsSettings$Credential;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 368
    sget v0, Lcom/android/settings/R$layout;->user_credential_preference:I

    sput v0, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;->LAYOUT_RESOURCE:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/view/View$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/UserCredentialsSettings$Credential;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 373
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 374
    iput-object p1, p0, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;->mItems:Ljava/util/List;

    .line 375
    iput-object p2, p0, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;->mListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 393
    iget-object p0, p0, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;->mItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 367
    check-cast p1, Lcom/android/settings/UserCredentialsSettings$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;->onBindViewHolder(Lcom/android/settings/UserCredentialsSettings$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/UserCredentialsSettings$ViewHolder;I)V
    .locals 5

    .line 386
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/UserCredentialsSettings$Credential;

    sget v1, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;->LAYOUT_RESOURCE:I

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/UserCredentialsSettings;->getCredentialView(Lcom/android/settings/UserCredentialsSettings$Credential;ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    .line 387
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 388
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 367
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/UserCredentialsSettings$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/UserCredentialsSettings$ViewHolder;
    .locals 2

    .line 380
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 381
    new-instance p2, Lcom/android/settings/UserCredentialsSettings$ViewHolder;

    sget v0, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;->LAYOUT_RESOURCE:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/android/settings/UserCredentialsSettings$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
