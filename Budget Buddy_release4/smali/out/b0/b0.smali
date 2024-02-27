.class public final synthetic Lb0/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lb0/i;

.field public final synthetic f:Ls0/i;

.field public final synthetic g:Ls0/j$d;


# direct methods
.method public synthetic constructor <init>(Lb0/i;Ls0/i;Ls0/j$d;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/b0;->e:Lb0/i;

    iput-object p2, p0, Lb0/b0;->f:Ls0/i;

    iput-object p3, p0, Lb0/b0;->g:Ls0/j$d;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lb0/b0;->e:Lb0/i;

    iget-object v1, p0, Lb0/b0;->f:Ls0/i;

    iget-object v2, p0, Lb0/b0;->g:Ls0/j$d;

    invoke-static {v0, v1, v2}, Lb0/c0;->d(Lb0/i;Ls0/i;Ls0/j$d;)V

    return-void
.end method
