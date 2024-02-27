.class Landroidx/activity/result/ActivityResultRegistry$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/g;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroidx/activity/result/b;

.field final synthetic c:Lb/a;

.field final synthetic d:Landroidx/activity/result/d;


# virtual methods
.method public d(Landroidx/lifecycle/i;Landroidx/lifecycle/f$b;)V
    .registers 6

    sget-object p1, Landroidx/lifecycle/f$b;->ON_START:Landroidx/lifecycle/f$b;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_69

    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Landroidx/activity/result/d;

    iget-object p1, p1, Landroidx/activity/result/d;->f:Ljava/util/Map;

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;

    new-instance v0, Landroidx/activity/result/d$b;

    iget-object v1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->b:Landroidx/activity/result/b;

    iget-object v2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->c:Lb/a;

    invoke-direct {v0, v1, v2}, Landroidx/activity/result/d$b;-><init>(Landroidx/activity/result/b;Lb/a;)V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Landroidx/activity/result/d;

    iget-object p1, p1, Landroidx/activity/result/d;->g:Ljava/util/Map;

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3e

    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Landroidx/activity/result/d;

    iget-object p1, p1, Landroidx/activity/result/d;->g:Ljava/util/Map;

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Landroidx/activity/result/d;

    iget-object p2, p2, Landroidx/activity/result/d;->g:Ljava/util/Map;

    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->b:Landroidx/activity/result/b;

    invoke-interface {p2, p1}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    :cond_3e
    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Landroidx/activity/result/d;

    iget-object p1, p1, Landroidx/activity/result/d;->h:Landroid/os/Bundle;

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/activity/result/a;

    if-eqz p1, :cond_8a

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Landroidx/activity/result/d;

    iget-object p2, p2, Landroidx/activity/result/d;->h:Landroid/os/Bundle;

    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->b:Landroidx/activity/result/b;

    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$1;->c:Lb/a;

    invoke-virtual {p1}, Landroidx/activity/result/a;->b()I

    move-result v1

    invoke-virtual {p1}, Landroidx/activity/result/a;->a()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lb/a;->c(ILandroid/content/Intent;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    goto :goto_8a

    :cond_69
    sget-object p1, Landroidx/lifecycle/f$b;->ON_STOP:Landroidx/lifecycle/f$b;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7b

    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Landroidx/activity/result/d;

    iget-object p1, p1, Landroidx/activity/result/d;->f:Ljava/util/Map;

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8a

    :cond_7b
    sget-object p1, Landroidx/lifecycle/f$b;->ON_DESTROY:Landroidx/lifecycle/f$b;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8a

    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Landroidx/activity/result/d;

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroidx/activity/result/d;->k(Ljava/lang/String;)V

    :cond_8a
    :goto_8a
    return-void
.end method
