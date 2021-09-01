.class public Lcom/android/settings/password/PasswordRequirementAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PasswordRequirementAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mForSetup:Z

.field private mRequirements:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/android/settings/password/PasswordRequirementAdapter;->mForSetup:Z

    const/4 v0, 0x1

    .line 40
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/password/PasswordRequirementAdapter;->mRequirements:[Ljava/lang/String;

    array-length p0, p0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/settings/password/PasswordRequirementAdapter;->mRequirements:[Ljava/lang/String;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 32
    check-cast p1, Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/password/PasswordRequirementAdapter;->onBindViewHolder(Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;I)V
    .locals 2

    .line 67
    invoke-static {p1}, Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;->access$000(Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/PasswordRequirementAdapter;->mRequirements:[Ljava/lang/String;

    aget-object p2, v1, p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-boolean p0, p0, Lcom/android/settings/password/PasswordRequirementAdapter;->mForSetup:Z

    if-eqz p0, :cond_0

    .line 70
    invoke-static {p1}, Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;->access$000(Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p2, Lcom/android/settings/R$color;->op_control_text_color_primary_light:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    .line 72
    invoke-static {p1}, Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;->access$000(Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/password/PasswordRequirementAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;
    .locals 1

    .line 45
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/android/settings/R$layout;->password_requirement_item:I

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 47
    new-instance p1, Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;

    invoke-direct {p1, p0}, Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public setForSetup(Z)V
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/android/settings/password/PasswordRequirementAdapter;->mForSetup:Z

    return-void
.end method

.method public setRequirements([Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/settings/password/PasswordRequirementAdapter;->mRequirements:[Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
