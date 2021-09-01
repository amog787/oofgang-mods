.class Lcom/android/settings/development/graphicsdriver/GraphicsDriverAppPreferenceController$1;
.super Ljava/lang/Object;
.source "GraphicsDriverAppPreferenceController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/graphicsdriver/GraphicsDriverAppPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/development/graphicsdriver/GraphicsDriverAppPreferenceController$AppInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/android/settings/development/graphicsdriver/GraphicsDriverAppPreferenceController;)V
    .locals 0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/development/graphicsdriver/GraphicsDriverAppPreferenceController$AppInfo;Lcom/android/settings/development/graphicsdriver/GraphicsDriverAppPreferenceController$AppInfo;)I
    .locals 0

    .line 238
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object p0

    iget-object p1, p1, Lcom/android/settings/development/graphicsdriver/GraphicsDriverAppPreferenceController$AppInfo;->label:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/settings/development/graphicsdriver/GraphicsDriverAppPreferenceController$AppInfo;->label:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 236
    check-cast p1, Lcom/android/settings/development/graphicsdriver/GraphicsDriverAppPreferenceController$AppInfo;

    check-cast p2, Lcom/android/settings/development/graphicsdriver/GraphicsDriverAppPreferenceController$AppInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/development/graphicsdriver/GraphicsDriverAppPreferenceController$1;->compare(Lcom/android/settings/development/graphicsdriver/GraphicsDriverAppPreferenceController$AppInfo;Lcom/android/settings/development/graphicsdriver/GraphicsDriverAppPreferenceController$AppInfo;)I

    move-result p0

    return p0
.end method
