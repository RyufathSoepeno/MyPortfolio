.class Lf/a$d;
.super Lf/a$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Landroidx/vectordrawable/graphics/drawable/b;


# direct methods
.method constructor <init>(Landroidx/vectordrawable/graphics/drawable/b;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lf/a$g;-><init>(Lf/a$a;)V

    iput-object p1, p0, Lf/a$d;->a:Landroidx/vectordrawable/graphics/drawable/b;

    return-void
.end method


# virtual methods
.method public c()V
    .registers 2

    iget-object v0, p0, Lf/a$d;->a:Landroidx/vectordrawable/graphics/drawable/b;

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/b;->start()V

    return-void
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Lf/a$d;->a:Landroidx/vectordrawable/graphics/drawable/b;

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/b;->stop()V

    return-void
.end method
