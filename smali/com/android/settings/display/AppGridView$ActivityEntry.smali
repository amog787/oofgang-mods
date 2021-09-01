.class public Lcom/android/settings/display/AppGridView$ActivityEntry;
.super Ljava/lang/Object;
.source "AppGridView.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/AppGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/display/AppGridView$ActivityEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public final info:Landroid/content/pm/ResolveInfo;

.field public final label:Ljava/lang/String;

.field private final mIconFactory:Landroid/util/IconDrawableFactory;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/util/IconDrawableFactory;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/android/settings/display/AppGridView$ActivityEntry;->info:Landroid/content/pm/ResolveInfo;

    .line 148
    iput-object p2, p0, Lcom/android/settings/display/AppGridView$ActivityEntry;->label:Ljava/lang/String;

    .line 149
    iput-object p3, p0, Lcom/android/settings/display/AppGridView$ActivityEntry;->mIconFactory:Landroid/util/IconDrawableFactory;

    .line 150
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/AppGridView$ActivityEntry;->mUserId:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/display/AppGridView$ActivityEntry;)I
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/android/settings/display/AppGridView$ActivityEntry;->label:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/display/AppGridView$ActivityEntry;->label:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 138
    check-cast p1, Lcom/android/settings/display/AppGridView$ActivityEntry;

    invoke-virtual {p0, p1}, Lcom/android/settings/display/AppGridView$ActivityEntry;->compareTo(Lcom/android/settings/display/AppGridView$ActivityEntry;)I

    move-result p0

    return p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/android/settings/display/AppGridView$ActivityEntry;->mIconFactory:Landroid/util/IconDrawableFactory;

    iget-object v1, p0, Lcom/android/settings/display/AppGridView$ActivityEntry;->info:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Lcom/android/settings/display/AppGridView$ActivityEntry;->mUserId:I

    invoke-virtual {v0, v1, v2, p0}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/android/settings/display/AppGridView$ActivityEntry;->label:Ljava/lang/String;

    return-object p0
.end method
