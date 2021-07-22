.class public Lcom/android/settings/UsageStatsActivity;
.super Landroid/app/Activity;
.source "UsageStatsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;,
        Lcom/android/settings/UsageStatsActivity$AppViewHolder;,
        Lcom/android/settings/UsageStatsActivity$UsageTimeComparator;,
        Lcom/android/settings/UsageStatsActivity$LastTimeUsedComparator;,
        Lcom/android/settings/UsageStatsActivity$AppNameComparator;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mUsageStatsManager:Landroid/app/usage/UsageStatsManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/UsageStatsActivity;)Landroid/app/usage/UsageStatsManager;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/UsageStatsActivity;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/UsageStatsActivity;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/UsageStatsActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/UsageStatsActivity;)Landroid/view/LayoutInflater;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/UsageStatsActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 231
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 232
    sget p1, Lcom/android/settings/R$layout;->usage_stats:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const-string/jumbo p1, "usagestats"

    .line 234
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStatsManager;

    iput-object p1, p0, Lcom/android/settings/UsageStatsActivity;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    const-string p1, "layout_inflater"

    .line 235
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/settings/UsageStatsActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 236
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/UsageStatsActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 238
    sget p1, Lcom/android/settings/R$id;->typeSpinner:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    .line 239
    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 241
    sget p1, Lcom/android/settings/R$id;->pkg_list:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 242
    new-instance v0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;

    invoke-direct {v0, p0}, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;-><init>(Lcom/android/settings/UsageStatsActivity;)V

    iput-object v0, p0, Lcom/android/settings/UsageStatsActivity;->mAdapter:Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;

    .line 243
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 248
    iget-object p0, p0, Lcom/android/settings/UsageStatsActivity;->mAdapter:Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;

    invoke-virtual {p0, p3}, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->sortList(I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
