.class Landroidx/activity/ComponentActivity$b;
.super Landroidx/activity/result/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/ComponentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic i:Landroidx/activity/ComponentActivity;


# direct methods
.method constructor <init>(Landroidx/activity/ComponentActivity;)V
    .registers 2

    iput-object p1, p0, Landroidx/activity/ComponentActivity$b;->i:Landroidx/activity/ComponentActivity;

    invoke-direct {p0}, Landroidx/activity/result/d;-><init>()V

    return-void
.end method


# virtual methods
.method public f(ILb/a;Ljava/lang/Object;Landroidx/core/app/e;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(I",
            "Lb/a<",
            "TI;TO;>;TI;",
            "Landroidx/core/app/e;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/activity/ComponentActivity$b;->i:Landroidx/activity/ComponentActivity;

    invoke-virtual {p2, v0, p3}, Lb/a;->b(Landroid/content/Context;Ljava/lang/Object;)Lb/a$a;

    move-result-object p4

    if-eqz p4, :cond_1a

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p3, Landroidx/activity/ComponentActivity$b$a;

    invoke-direct {p3, p0, p1, p4}, Landroidx/activity/ComponentActivity$b$a;-><init>(Landroidx/activity/ComponentActivity$b;ILb/a$a;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1a
    invoke-virtual {p2, v0, p3}, Lb/a;->a(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p4

    if-eqz p4, :cond_36

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p4

    invoke-virtual {p4}, Landroid/os/Bundle;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p4

    if-nez p4, :cond_36

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    :cond_36
    const-string p4, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    invoke-virtual {p2, p4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-virtual {p2, p4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p2, p4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_45
    move-object v7, p3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    const-string p4, "androidx.activity.result.contract.action.REQUEST_PERMISSIONS"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_61

    const-string p3, "androidx.activity.result.contract.extra.PERMISSIONS"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5d

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    :cond_5d
    invoke-static {v0, p2, p1}, Landroidx/core/app/b;->l(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_a1

    :cond_61
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    const-string p4, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9e

    const-string p3, "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroidx/activity/result/f;

    :try_start_75
    invoke-virtual {p2}, Landroidx/activity/result/f;->d()Landroid/content/IntentSender;

    move-result-object v1

    invoke-virtual {p2}, Landroidx/activity/result/f;->a()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p2}, Landroidx/activity/result/f;->b()I

    move-result v4

    invoke-virtual {p2}, Landroidx/activity/result/f;->c()I

    move-result v5

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v7}, Landroidx/core/app/b;->n(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_8a
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_75 .. :try_end_8a} :catch_8b

    goto :goto_a1

    :catch_8b
    move-exception p2

    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p4, Landroidx/activity/ComponentActivity$b$b;

    invoke-direct {p4, p0, p1, p2}, Landroidx/activity/ComponentActivity$b$b;-><init>(Landroidx/activity/ComponentActivity$b;ILandroid/content/IntentSender$SendIntentException;)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a1

    :cond_9e
    invoke-static {v0, p2, p1, v7}, Landroidx/core/app/b;->m(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    :goto_a1
    return-void
.end method
