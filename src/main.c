/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: karvin <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/02/10 22:15:48 by karvin            #+#    #+#             */
/*   Updated: 2017/02/13 14:18:10 by karvin           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include <unistd.h>
#include "../inc/fillit.h"
#include <fcntl.h>

void		ft_putstr(const char *str)
{
	int		i;

	i = 0;
	while (str)
	{
		write(1, *str++, 1);
	}
}

int			read_it(char *file)
{
	int		fd;

	if ((fd = open(file, O_RDONLY)) < 0)
		ft_putstr("Error: Nothing to read?");
	else
		ft_putstr("Success, there is something to be read.");
	return (0);
}

int			main(int argc, char **argv)
{
	if (argc != 2)
	{
		ft_putstr("usage: fillit file\n");
		exit(0);
	}
	read_it(argv[1]);
	return(0);
}
