.class public final synthetic Lcom/android/settings/notification/app/-$$Lambda$ImportancePreference$gD7QVP1iyGi00Rs-If9CRTqUES4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/app/ImportancePreference;

.field public final synthetic f$1:Landroidx/preference/PreferenceViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/app/ImportancePreference;Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/app/-$$Lambda$ImportancePreference$gD7QVP1iyGi00Rs-If9CRTqUES4;->f$0:Lcom/android/settings/notification/app/ImportancePreference;

    iput-object p2, p0, Lcom/android/settings/notification/app/-$$Lambda$ImportancePreference$gD7QVP1iyGi00Rs-If9CRTqUES4;->f$1:Landroidx/preference/PreferenceViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/app/-$$Lambda$ImportancePreference$gD7QVP1iyGi00Rs-If9CRTqUES4;->f$0:Lcom/android/settings/notification/app/ImportancePreference;

    iget-object p0, p0, Lcom/android/settings/notification/app/-$$Lambda$ImportancePreference$gD7QVP1iyGi00Rs-If9CRTqUES4;->f$1:Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/notification/app/ImportancePreference;->lambda$onBindViewHolder$1$ImportancePreference(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V

    return-void
.end method
