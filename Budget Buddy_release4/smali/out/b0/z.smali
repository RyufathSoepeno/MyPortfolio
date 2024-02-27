.class public final synthetic Lb0/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Z

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ls0/j$d;

.field public final synthetic h:Ljava/lang/Boolean;

.field public final synthetic i:Lb0/i;

.field public final synthetic j:Ls0/i;

.field public final synthetic k:Z

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;Ls0/j$d;Ljava/lang/Boolean;Lb0/i;Ls0/i;ZI)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lb0/z;->e:Z

    iput-object p2, p0, Lb0/z;->f:Ljava/lang/String;

    iput-object p3, p0, Lb0/z;->g:Ls0/j$d;

    iput-object p4, p0, Lb0/z;->h:Ljava/lang/Boolean;

    iput-object p5, p0, Lb0/z;->i:Lb0/i;

    iput-object p6, p0, Lb0/z;->j:Ls0/i;

    iput-boolean p7, p0, Lb0/z;->k:Z

    iput p8, p0, Lb0/z;->l:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    iget-boolean v0, p0, Lb0/z;->e:Z

    iget-object v1, p0, Lb0/z;->f:Ljava/lang/String;

    iget-object v2, p0, Lb0/z;->g:Ls0/j$d;

    iget-object v3, p0, Lb0/z;->h:Ljava/lang/Boolean;

    iget-object v4, p0, Lb0/z;->i:Lb0/i;

    iget-object v5, p0, Lb0/z;->j:Ls0/i;

    iget-boolean v6, p0, Lb0/z;->k:Z

    iget v7, p0, Lb0/z;->l:I

    invoke-static/range {v0 .. v7}, Lb0/c0;->b(ZLjava/lang/String;Ls0/j$d;Ljava/lang/Boolean;Lb0/i;Ls0/i;ZI)V

    return-void
.end method
